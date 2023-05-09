view: auto_imp {
  sql_table_name: `Automobile_loan.auto_imp`
    ;;

  dimension: age_days {
    type: number
    sql: ${TABLE}.Age_Days ;;
  }

  dimension: application_process_hour {
    type: number
    sql: ${TABLE}.Application_Process_Hour ;;
  }

  dimension: client_income {
    type: number
    sql: ${TABLE}.Client_Income ;;
  }

  dimension: credit_amount {
    type: number
    sql: ${TABLE}.Credit_Amount ;;
  }

  dimension: defaulted {
    type: number
    sql: ${TABLE}.Defaulted ;;
  }

  dimension: employed_days {
    type: number
    sql: ${TABLE}.Employed_Days ;;
  }

  dimension: id_days {
    type: number
    sql: ${TABLE}.ID_Days ;;
  }

  dimension: loan_annuity {
    type: number
    sql: ${TABLE}.Loan_Annuity ;;
  }

  dimension: phone_change {
    type: number
    sql: ${TABLE}.Phone_Change ;;
  }

  dimension: population_region_relative {
    type: string
    sql: ${TABLE}.Population_Region_Relative ;;
  }

  dimension: registration_days {
    type: number
    sql: ${TABLE}.Registration_Days ;;
  }

  dimension: score_source_1 {
    type: number
    sql: ${TABLE}.Score_Source_1 ;;
  }

  dimension: score_source_2 {
    type: number
    sql: ${TABLE}.Score_Source_2 ;;
  }

  dimension: score_source_3 {
    type: number
    sql: ${TABLE}.Score_Source_3 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
