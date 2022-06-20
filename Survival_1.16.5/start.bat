@echo off
title AnkSoft Survival
:start
java -XX:+UnlockExperimentalVMOptions -server -Xms256M -Xmx4G -XX:-HeapDumpOnOutOfMemoryError -XX:SoftRefLRUPolicyMSPerMB=1000 -XX:-UseCompressedOops -XX:+TieredCompilation -XX:+UseBiasedLocking -XX:+UseG1GC -XX:+UseStringDeduplication -XX:+ParallelRefProcEnabled -Djava.awt.headless=true -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8 -Dsun.stderr.encoding=UTF-8 -Dsun.stdout.encoding=UTF-8 -Duser.language=en -Duser.country=US -Dpaper.playerconnection.keepalive=120 -Dlog4j.skipJansi=true -jar purpur.jar -nojline -o false --log-append=false --log-strip-color=true nogui
pause
echo Sunucu kapatma komutu verildi, 5 saniye sonra yeniden baslayacak.
timeout 5 > nul
goto start