function job_search
    set jobSearchCSV "$HOME/JobSearchScripts/Testing/test.csv"

    grep -i $argv $jobSearchCSV
end
