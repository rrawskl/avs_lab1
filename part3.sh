#!/bin/bash

ls -lR | grep '^-' | sort -k5,5nr | head -n 5

grep -RhiE 'смен|лёва' claude_monet | grep -vi 'отчёт' | sort | head -n 6

grep -Ril 'смен' claude_monet/kitchen/morning_shift claude_monet/kitchen/evening_shift/morning_backup | wc -l

tail -q -n 2 claude_monet/kitchen/morning_shift/*_tasks claude_monet/kitchen/evening_shift/*_tasks | grep -Ei 'лёва|смен' | sort -r

grep -Ev 'Сеня|Федя' claude_monet/kitchen/morning_report | sort -r | head -n 4 | wc -w

ls -lR | grep '^-' | grep -E '^[^ ]+[[:space:]]+2[[:space:]]' | sort -k9,9

ls -lR | grep '^l' | grep -v 'shift' | sort -rk9,9

rm staff_room/late_report
rm staff_room/current_order
rm shift_kitchen
rm shift_message
rm claude_monet/kitchen/common_message
rm claude_monet/kitchen/evening_shift/denis_tasks
rmdir reserve_empty
rm -r claude_monet/kitchen/evening_shift/morning_backup