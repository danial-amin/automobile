view: auto_full {
  sql_table_name: `Automobile_loan.auto_full`
    ;;

  dimension: accompany_client {
    type: number
    sql: ${TABLE}.Accompany_Client ;;
  }

  dimension: active_loan {
    type: number
    sql: ${TABLE}.Active_Loan ;;
  }

  dimension: age_days {
    type: number
    sql: ${TABLE}.Age_Days ;;
  }

  dimension: application_process_day {
    type: number
    sql: ${TABLE}.Application_Process_Day ;;
  }

  dimension: application_process_hour {
    type: number
    sql: ${TABLE}.Application_Process_Hour ;;
  }

  dimension: bike_owned {
    type: number
    sql: ${TABLE}.Bike_Owned ;;
  }

  dimension: car_owned {
    type: number
    sql: ${TABLE}.Car_Owned ;;
  }

  dimension: child_count {
    type: number
    sql: ${TABLE}.Child_Count ;;
  }

  dimension: cleint_city_rating {
    type: number
    sql: ${TABLE}.Cleint_City_Rating ;;
  }

  dimension: client_contact_work_tag {
    type: number
    sql: ${TABLE}.Client_Contact_Work_Tag ;;
  }

  dimension: client_education {
    type: number
    sql: ${TABLE}.Client_Education ;;
  }

  dimension: client_family_members {
    type: number
    sql: ${TABLE}.Client_Family_Members ;;
  }

  dimension: client_gender {
    type: number
    sql: ${TABLE}.Client_Gender ;;
  }

  dimension: client_housing_type {
    type: number
    sql: ${TABLE}.Client_Housing_Type ;;
  }

  dimension: client_income {
    type: number
    sql: ${TABLE}.Client_Income ;;
  }

  dimension: client_income_type {
    type: number
    sql: ${TABLE}.Client_Income_Type ;;
  }

  dimension: client_marital_status {
    type: number
    sql: ${TABLE}.Client_Marital_Status ;;
  }

  dimension: client_occupation {
    type: number
    sql: ${TABLE}.Client_Occupation ;;
  }

  dimension: client_permanent_match_tag {
    type: number
    sql: ${TABLE}.Client_Permanent_Match_Tag ;;
  }

  dimension: credit_amount {
    type: number
    sql: ${TABLE}.Credit_Amount ;;
  }

  dimension: credit_bureau {
    type: number
    sql: ${TABLE}.Credit_Bureau ;;
  }

  dimension: defaulted {
    type: number
    sql: ${TABLE}.Defaulted ;;
  }

  dimension: employed_days {
    type: number
    sql: ${TABLE}.Employed_Days ;;
  }

  dimension: homephone_tag {
    type: number
    sql: ${TABLE}.Homephone_Tag ;;
  }

  dimension: house_own {
    type: number
    sql: ${TABLE}.House_Own ;;
  }

  dimension: id_days {
    type: number
    sql: ${TABLE}.ID_Days ;;
  }

  dimension: loan_annuity {
    type: number
    sql: ${TABLE}.Loan_Annuity ;;
  }

  dimension: loan_contract_type {
    type: number
    sql: ${TABLE}.Loan_Contract_Type ;;
  }

  dimension: mobile_tag {
    type: number
    sql: ${TABLE}.Mobile_Tag ;;
  }

  dimension: own_house_age {
    type: number
    sql: ${TABLE}.Own_House_Age ;;
  }

  dimension: phone_change {
    type: number
    sql: ${TABLE}.Phone_Change ;;
  }

  dimension: population_region_relative {
    type: number
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

  dimension: social_circle_default {
    type: number
    sql: ${TABLE}.Social_Circle_Default ;;
  }

  dimension: type_organization {
    type: number
    sql: ${TABLE}.Type_Organization ;;
  }

  dimension: workphone_working {
    type: number
    sql: ${TABLE}.Workphone_Working ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: sum_of_defaulted {
    type: sum
    sql: ${TABLE}.y;;
  }
  measure: ratio {
    type: number
    sql: ${sum_of_defaulted}/${count};;
  }
}
