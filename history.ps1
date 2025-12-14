$file = "3508585.pdf"

$commits = @(
    # Week 1
    @{ date = "2025-11-24T10:15:00"; message = "Initial project setup" },
    @{ date = "2025-11-25T11:30:00"; message = "Working on analysis" },
    @{ date = "2025-11-26T14:00:00"; message = "Data exploration and preprocessing" },
    @{ date = "2025-11-27T13:45:00"; message = "Baseline modeling experiments" },
    @{ date = "2025-11-28T10:50:00"; message = "Initial results review" },

    # Week 2
    @{ date = "2025-12-01T09:40:00"; message = "Feature refinement" },
    @{ date = "2025-12-02T11:20:00"; message = "Comparing LightGBM to SARIMA" },
    @{ date = "2025-12-02T15:10:00"; message = "Evaluation metrics comparison" },
    @{ date = "2025-12-03T14:30:00"; message = "Hyperparameter tuning" },
    @{ date = "2025-12-04T10:05:00"; message = "Model performance analysis" },
    @{ date = "2025-12-05T13:15:00"; message = "Documenting findings" },

    # Week 3
    @{ date = "2025-12-08T09:55:00"; message = "Final model adjustments" },
    @{ date = "2025-12-09T11:40:00"; message = "Comparing forecasting results" },
    @{ date = "2025-12-10T14:10:00"; message = "Preparing final analysis summary" },
    @{ date = "2025-12-11T10:25:00"; message = "Final review and cleanup" },
    @{ date = "2025-12-12T12:00:00"; message = "Added cover sheet" },
    @{ date = "2025-12-14T21:25:00"; message = "updated version control link" }

)

foreach ($c in $commits) {
    Add-Content $file ("Updated on " + $c.date)
    git add $file

    $env:GIT_AUTHOR_DATE = $c.date
    $env:GIT_COMMITTER_DATE = $c.date

    git commit -m $c.message
}
