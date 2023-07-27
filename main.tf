# dbt_cloud_job.test:
terraform {

 backend "gcs" {

  bucket = "tf-dbtcloud-state"

  prefix = "terraform/state"

 }

}

resource "dbt_cloud_job" "test" {
    deferring_job_id     = 0
    count                = length(var.environment_id)
    environment_id       = var.environment_id[count.index]
    execute_steps        = [
        "dbt test",
    ]
    generate_docs        = false
    is_active            = true
    name                 ="Test1"
    num_threads          = 4
    project_id           = 269849
    run_generate_sources = false
    schedule_interval    = 1
    schedule_type        = "every_day"
    target_name          = "default"
    timeout_seconds      = 0
    triggers             = {
        "custom_branch_only"   = true
        "git_provider_webhook" = false
        "github_webhook"       = false
        "schedule"             = false
    }
}
# dbt_cloud_job.OperationSiteAgg_Test1:
resource "dbt_cloud_job" "OperationSiteAgg_Test1" {
    deferring_job_id     = 0
    count                = length(var.environment_id)
    environment_id       = var.environment_id[count.index]
    execute_steps        = [
        "dbt run --select TransactionbySourceAllocation",
        "dbt run --select +Units_Load",
        "dbt run --select +OperationalOccuppied_Load",
        "dbt run --select +Operation_Site_Agg",
    ]
    generate_docs        = false
    is_active            = true
    name                 = "OperationSiteAgg_Test1"
    num_threads          = var.environment_id[count.index] == 218665 ? 6 : 4
    project_id           = 269849
    run_generate_sources = false
    
    schedule_days        = [
        0,
        1,
        2,
        3,
        4,
        5,
        6,
    ]
    schedule_hours       = [
        22,
    ]
    schedule_type        = "days_of_week"
    target_name          = "default"
    timeout_seconds      = 0
    triggers             = {
        "custom_branch_only"   = true
        "git_provider_webhook" = false
        "github_webhook"       = false
        "schedule"             = true
    }
}

# dbt_cloud_job.OperationSiteAgg_Test2:
resource "dbt_cloud_job" "OperationSiteAgg_Test2" {
    deferring_job_id     = 0
    count                = length(var.environment_id)
    environment_id       = var.environment_id[count.index]
    execute_steps        = [
        "dbt test",
    ]
    generate_docs        = false
    is_active            = true
    name                 = "OperationSiteAgg_Test2"
    num_threads          = var.environment_id[count.index] == 218665 ? 6 : 4
    project_id           = 269849
    run_generate_sources = false
    
    schedule_days        = [
        0,
        1,
        2,
        3,
        4,
        5,
        6,
    ]
    schedule_interval    = 22
    schedule_type        = "days_of_week"
    target_name          = "default"
    timeout_seconds      = 0
    triggers             = {
        "custom_branch_only"   = true
        "git_provider_webhook" = false
        "github_webhook"       = false
        "schedule"             = true
    }
}

# dbt_cloud_job.OperationSiteAgg_Test2:

resource "dbt_cloud_job" "OperationSiteAgg_Test3" {

    deferring_job_id     = 0

    count                = length(var.environment_id)

    environment_id       = var.environment_id[count.index]

    execute_steps        = [

        "dbt test",

    ]

    generate_docs        = false

    is_active            = true

    name                 = "OperationSiteAgg_Test3"

    num_threads          = var.environment_id[count.index] == 218665 ? 6 : 4

    project_id           = 269849

    run_generate_sources = false

   

    schedule_days        = [

        0,

        1,

        2,

        3,

        4,

        5,

        6,

    ]

    schedule_interval    = 22

    schedule_type        = "days_of_week"

    target_name          = "default"

    timeout_seconds      = 0

    triggers             = {

        "custom_branch_only"   = true

        "git_provider_webhook" = false

        "github_webhook"       = false

        "schedule"             = true

    }

}

 
