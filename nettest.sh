counterok=0
counterfail=0
while true;
do
    if ping -t 1 -q -c 1 google.com &>/dev/null;
    then
        printf "[%s] okay   \r" $counterok
        counterfail=0
        ((counterok++))
    else
        printf "[%s] fail   \r" $counterfail;
        counterok=0
        ((counterfail++))
    fi

    sleep 1
done

