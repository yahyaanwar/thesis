evince ./thesis.pdf && xdotool search --onlyvisible --name ./thesis.pdf | head -n 1 | xargs -t -I _ sh -c "xdotool windowsize _ 570 810 && xdotool windowmove _ 830 0"
