param(
    [Parameter(Mandatory = $true)]
    [string]$InputDocx,
    [Parameter(Mandatory = $true)]
    [string]$OutputDir,
    [ValidateSet('Final', 'Markup')]
    [string]$View = 'Final',
    [int]$Dpi = 600
)

$inputPath = (Resolve-Path -LiteralPath $InputDocx -ErrorAction Stop).Path
if ((Test-Path -LiteralPath $OutputDir) -and (Get-ChildItem -LiteralPath $OutputDir -Force | Select-Object -First 1)) {
    throw "OutputDir must be new or empty: $OutputDir"
}
New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null

$pdfPath = Join-Path $OutputDir "$View.pdf"
$word = $null
$document = $null
try {
    $word = New-Object -ComObject Word.Application
    $word.Visible = $false
    $word.DisplayAlerts = 0
    $document = $word.Documents.Open($inputPath, $false, $true)
    if ($View -eq 'Markup') {
        # wdExportDocumentWithMarkup = 7
        $document.ExportAsFixedFormat($pdfPath, 17, $false, 0, 0, 0, 0, 7)
    }
    else {
        $document.ExportAsFixedFormat($pdfPath, 17)
    }
}
finally {
    if ($document) { $document.Close(0) }
    if ($word) { $word.Quit() }
}

$render = @'
import fitz
import pathlib
import sys

pdf_path = pathlib.Path(sys.argv[1])
output_dir = pathlib.Path(sys.argv[2])
dpi = int(sys.argv[3])
zoom = dpi / 72
pdf = fitz.open(pdf_path)
for index, page in enumerate(pdf, start=1):
    pix = page.get_pixmap(matrix=fitz.Matrix(zoom, zoom), alpha=False)
    pix.save(output_dir / f"page-{index:03d}.png")
print(len(pdf))
'@
$pageCount = $render | python - $pdfPath $OutputDir $Dpi
Write-Output "Rendered $pageCount $View pages to $OutputDir"
