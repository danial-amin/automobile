connection: "automobile-loan"

# include all the views
include: "/views/**/*.view"

datagroup: automobile_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: automobile_default_datagroup

explore: auto_imp {}

explore: auto_full {}

explore: featureimportance {}

explore: prediction {}
