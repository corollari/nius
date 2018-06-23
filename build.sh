cat telecosNIUs | sed 's/[0-9],[0-9]//g' | sed 's/ *$//' | sed -E 's/^([0-9]*) (.*) (.*)$/| \1 | \3 \2 |/' > cleanTelecosNIUs

cat matesNIUs | sed -E 's/^(.*)\t(.*)\t(.*)/| \1 | \2 \3 |/' > cleanMatesNIUs
