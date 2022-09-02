function job
    set resumeFolder "$HOME/JobSearchScripts/Testing/Resume"
    set jobSearchFolder "$HOME/JobSearchScripts/Testing/jobs"
    set jobTrackCSV "$HOME/JobSearchScripts/Testing/test.csv"

    mkdir -p $jobSearchFolder/$argv/"Resume"
    cp -r $resumeFolder $jobSearchFolder/$argv/
    echo $argv,(date +"%B %e"),No Response, >>$jobTrackCSV
    touch >>$jobSearchFolder/$argv/"info.txt"
end
