variable "workloads" {
  type =map(object({
     name=  string
     account_id = number
     query =string
  }))
}