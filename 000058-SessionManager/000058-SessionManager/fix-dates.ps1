# Script để sửa lỗi date trong front matter
Get-ChildItem -Path "content" -Recurse -Filter "*.md" | ForEach-Object {
    $content = Get-Content $_.FullName -Raw
    if ($content -match 'date\s*:\s*"`r Sys\.Date\(\)`"') {
        Write-Host "Fixing: $($_.FullName)"
        $content = $content -replace 'date\s*:\s*"`r Sys\.Date\(\)`"\s*\r?\n', ''
        Set-Content -Path $_.FullName -Value $content -NoNewline
    }
}
Write-Host "Done fixing date fields!"