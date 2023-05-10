view: prediction {
  parameter: ClientIncome{type: number}
  parameter: CreditAmount{type: number}
  parameter: RegistrationDays{type: number}
  parameter: LoanAnnuity{type: number}

  derived_table: {
    sql:
    SELECT * FROM ML.PREDICT(MODEL `automobile-386111.Automobile_loan.boosted_model`,
    (SELECT {% parameter ClientIncome %} AS Client_Income,
            {% parameter CreditAmount %} AS Credit_Amount,
            {% parameter RegistrationDays %} AS Registration_Days,
            {% parameter LoanAnnuity %} AS Loan_Annuity));;
  }
  dimension: predict_prob {
    type: number
    sql: ${TABLE}.predicted_Defaulted_probs[1][1] ;;
  }

  dimension: other_prob {
    type: number
    sql: ${TABLE}.predicted_Defaulted_probs[0][1] ;;
  }

  dimension: Client_Income {
    type: number
    sql: ${TABLE}.Client_Income ;;
  }
  dimension: Credit_Amount {
    type: number
    sql: ${TABLE}.Credit_Amount ;;
  }
  dimension: Loan_Annuity {
    type: number
    sql: ${TABLE}.Loan_Annuity ;;
  }
  dimension: Registration_Days {
    type: number
    sql: ${TABLE}.Registration_Days ;;
  }
}
