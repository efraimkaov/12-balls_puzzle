#!/bin/bash

# 12 BALLS PUZZLE
# ---------------
# author    : EfraimKAOV
#             https://github.com/efraimkaov
# project   : https://github.com/efraimkaov/12-balls_puzzle
# license   : LGPL-3.0 (http://opensource.org/licenses/lgpl-3.0.html)

dialog --title "12 BALLS PUZZLE" --msgbox "You have 12 balls identical in size and appearance (numbered from b1 to b12) but 1 is an odd weight (could be either or heavy).\n\nYou have a set of balance scales which will give 3 possible readings: Left = Right or Left > Right or Left < Right\n\nYou have only 3 chances to weigh the balls in any combination using the scales.\n\nFind which ball is the odd one and if it's heavier or lighter than the rest." 16 65

printf "1" > .tmp1
printf "\n3" >> .tmp1
br=$(sort -R .tmp1 |fmt |awk '{print $1}')

printf "2" > .tmp2
printf "\n2" >> .tmp2
printf "\n2" >> .tmp2
printf "\n2" >> .tmp2
printf "\n2" >> .tmp2
printf "\n2" >> .tmp2
printf "\n2" >> .tmp2
printf "\n2" >> .tmp2
printf "\n2" >> .tmp2
printf "\n2" >> .tmp2
printf "\n2" >> .tmp2
printf "\n${br}" >> .tmp2
shuf -n12 .tmp2 |fmt > .tmp3

b1=$(awk '{print $1}' .tmp3)
b2=$(awk '{print $2}' .tmp3)
b3=$(awk '{print $3}' .tmp3)
b4=$(awk '{print $4}' .tmp3)
b5=$(awk '{print $5}' .tmp3)
b6=$(awk '{print $6}' .tmp3)
b7=$(awk '{print $7}' .tmp3)
b8=$(awk '{print $8}' .tmp3)
b9=$(awk '{print $9}' .tmp3)
b10=$(awk '{print $10}' .tmp3)
b11=$(awk '{print $11}' .tmp3)
b12=$(awk '{print $12}' .tmp3)

rm .tmp1 .tmp2 .tmp3

lw1=$(dialog --title "First weigh - Left side" --inputbox "e.g. b1+b2+b3" 8 35 --output-fd 1)
rw1=$(dialog --title "First weigh - Right side" --inputbox "e.g. b4+b5+b6" 8 35 --output-fd 1)
if (($lw1==$rw1))
then
dialog --title "First weigh" --msgbox "Left = Right" 5 20
fi
if (($lw1>$rw1))
then
dialog --title "First weigh" --msgbox "Left > Right" 5 20
fi
if (($lw1<$rw1))
then
dialog --title "First weigh" --msgbox "Left < Right" 5 20
fi

lw2=$(dialog --title "Second weigh - Left side" --inputbox "e.g. b7+b8" 8 35 --output-fd 1)
rw2=$(dialog --title "Second weigh - Right side" --inputbox "e.g. b9" 8 35 --output-fd 1)
if (($lw2==$rw2))
then
dialog --title "Second weigh" --msgbox "Left = Right" 5 20
fi
if (($lw2>$rw2))
then
dialog --title "Second weigh" --msgbox "Left > Right" 5 20
fi
if (($lw2<$rw2))
then
dialog --title "Second weigh" --msgbox "Left < Right" 5 20
fi

lw3=$(dialog --title "Third weigh - Left side" --inputbox "e.g. b10" 8 35 --output-fd 1)
rw3=$(dialog --title "Third weigh - Right side" --inputbox "e.g. b11" 8 35 --output-fd 1)
if (($lw3==$rw3))
then
dialog --title "Third weigh" --msgbox "Left = Right" 5 20
fi
if (($lw3>$rw3))
then
dialog --title "Third weigh" --msgbox "Left > Right" 5 20
fi
if (($lw3<$rw3))
then
dialog --title "Third weigh" --msgbox "Left < Right" 5 20
fi

heavier=3
lighter=1
w=$(dialog --title "The ball with an odd weight" --inputbox "e.g. b12 heavier or b12 lighter" 8 35 --output-fd 1)
printf "$w" > .tmp4
ow=$(awk '{print $1}' .tmp4)
hl=$(awk '{print $2}' .tmp4)
rm .tmp4
if (($hl==$br))
then
if (($ow==$br))
then
dialog --title "You Won!" --msgbox "Correct answer!" 5 20
else
dialog --title "You Failed!" --msgbox "Wrong answer!" 5 20
fi
else
dialog --title "You Failed!" --msgbox "Wrong answer!" 5 20
fi
