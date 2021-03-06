. ./conf.sh


sysbench $conn_args \
         --threads=$threads  --report-interval=$report_interval --histogram=$histogram \
         --table_size=$table_size --tables=1 \
         --events=$events --time=$time \
         --random_points=${random_points:-100} \
         src/lua/select_random_points.lua run
