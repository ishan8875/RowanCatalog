$jsonString = [System.IO.File]::ReadAllText("$PWD\data\catalog.json", [System.Text.Encoding]::UTF8)
$json = $jsonString | ConvertFrom-Json
$keysToRemove = @(
    'Last_Inward_Date',
    'Is_New_Inward?',
    'Expected_Inward_Date',
    'Inward_Qty_Planned',
    'Notes_/_Remarks',
    'Current_Stock_(Qty)',
    'Sales_Qty_–_30_Days',
    'Sales_Qty_–_90_Days',
    'Sales_Qty_–_365_Days',
    'Avg_Monthly_Sales',
    'Months_of_Stock',
    'Stock_Status',
    'Active',
    'Last_Updated'
)
$filtered = $json | Select-Object -Property * -ExcludeProperty $keysToRemove
$out = $filtered | ConvertTo-Json -Depth 10
[System.IO.File]::WriteAllText("$PWD\data\catalog.json", $out, [System.Text.Encoding]::UTF8)
