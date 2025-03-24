printf "\n\n"
printf "%27s %14s %11s %11s %14s %11s %11s\n" TestName ReadBW ReadIOPS MeanReadLat WriteBW WriteIOPS MeanWriteLat
printf "\n\n"
fio --client=clients --minimal --section=read-iops-per-client readwrite.job 2>/dev/null | awk -f screenformat.awk
printf "\n"
fio --client=clients --minimal --section=write-iops-per-client readwrite.job 2>/dev/null | awk -f screenformat.awk
printf "\n"
fio --client=clients --minimal --section=read-bandwidth-per-client readwrite.job 2>/dev/null | awk -f screenformat.awk
printf "\n\n"
fio --client=clients --minimal --section=write-bandwidth-per-client readwrite.job 2>/dev/null | awk -f screenformat.awk
printf "\n\n"