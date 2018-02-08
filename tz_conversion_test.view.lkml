view: tz_conversion_test {
  derived_table: {
    sql:
           SELECT  cast(CURDATE() as timestamp)  as test_tz UNION ALL
           SELECT  cast(2018-02-08 03:57:26 +0000 as timestamp)  as test_tz UNION ALL
           SELECT  cast(2018-02-08 03:56:24 +0000 as timestamp)  as test_tz UNION ALL
           SELECT  cast(2018-02-08 03:55:39 +0000 as timestamp)  as test_tz UNION ALL
           SELECT  cast(2018-02-08 03:55:37 +0000 as timestamp)  as test_tz

    ;;

  }

  dimension_group: test_tz {
    type: time
    timeframes: [date,raw]
    datatype: timestamp
    sql: ${TABLE}.test_tz ;;
    }


 }




# UTC is 8 hours from us and CST  is 2 hours from us
# CST is 6 hours earlier than UTC
# AT TIME ZONE 'America/Chicago' corrects the timestamp from UTC to CST
