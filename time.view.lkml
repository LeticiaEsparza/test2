view: tz_conversion_test {
  derived_table: {
    sql:
          SELECT 2018-02-08 03:57:38 +0000::timestamp as time UNION ALL
          SELECT 2018-02-08 03:57:26 +0000::timestamp as time UNION ALL
          SELECT 2018-02-08 03:56:24 +0000::timestamp as time UNION ALL
          SELECT 2018-02-08 03:55:39 +0000::timestamp as time UNION ALL
          SELECT 2018-02-08 03:55:37 +0000::timestamp as time


    ;;
  }

  dimension:  time {
    type: date_time
    datatype: timestamp
    sql: ${time} ;;
  }



}



#AT TIME ZONE 'America/Chicago' corrects the timestamp from UTC (8 hours from now) to CST (2 hours from now)
# CST is 6 hours earlier than UTC

# view: value_format {
#   derived_table: {
#     sql:
#           select 123213213 as num union all
#           select 123213 as num union all
#           select 12323213123 as num union all
#           select 1232 as num
#         ;;
#   }
#   dimension: num {
#     type: number
#     value_format: "$#.00;($#.00)"
#   }
#   measure: sum {
#     type: sum
#     sql: ${num} ;;
#     value_format: "$#.00;($#.00)"
#   }
# }
