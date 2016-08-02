@ECHO OFF
for /r %%i in (*.csv) do (
echo %%i
echo "name: %%~ni.csv"
mongoimport -d Northwind -c "%%~ni" --type csv --file "%%i" --headerline
)