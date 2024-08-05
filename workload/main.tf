resource "newrelic_workload" "demo-workload" {
    for_each = var.workloads
    name =     each.value.name            
    account_id =    each.value.account_id        

    entity_search_query {
        query =    each.value.query           
    }
#     status_config_automatic {
#     enabled = true
#     rule {
#       nrql_query {
#         query = 
#       }
#       rollup {
#         strategy        = "BEST_STATUS_WINS"
#         threshold_type  = "FIXED"
#         threshold_value = 100
#       }
#     }
#   }
}