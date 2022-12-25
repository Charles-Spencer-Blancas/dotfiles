function job
    # Uncomment next line to put resume stuff in a folder
    # mkdir -p $jobSearchFolder/$argv/"Resume"
    cp -r $resumeFolder $jobSearchFolder/$argv/
    echo $argv,(date +"%B %e"),No Response, >>$jobTrackCSV
    touch $jobSearchFolder/$argv/"info.txt"
end
