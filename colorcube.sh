for i in {0..1}
do
    for k in {0..7}
    do
        tput setab $((i * 8 + k))
        echo -n '   '
    done
    tput sgr0
    echo ''
done

for i in {0..35}
do
    for k in {0..5}
    do
        tput setab $((16 + i * 6 + k))
        echo -n '   '
    done
    tput sgr0
    echo ''
done

for i in {232..255}
do
    tput setab "$i"
    echo -n '   '
done

tput sgr0
echo ''
