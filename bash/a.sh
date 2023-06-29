#!/bin/bash

echo "1: Production Server (antelope)"
echo "2: Gaming Server (goldfish)"
echo "3: Raspberry Pi (snail)"
echo "4: Element Animation"
echo "Enter an option (1-4): "
read num

case $num in

        1)
                ssh antelope
                ;;
        2)
                ssh goldfish
                ;;
        3)
                ssh snail
                ;;
        4)
                ssh ea
                ;;
        *)
                printf "Invalid Option!\n"
                ;;
esac
