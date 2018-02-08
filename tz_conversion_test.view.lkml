view: tz_conversion_test {
  derived_table: {
    sql:
           SELECT  UNIX_TIMESTAMP(CURDATE())  as test_tz UNION ALL
           SELECT  UNIX_TIMESTAMP('2018-02-08 03:57:26')  as test_tz UNION ALL
           SELECT  UNIX_TIMESTAMP('2018-02-08 03:56:24')  as test_tz UNION ALL
           SELECT  UNIX_TIMESTAMP('2018-02-08 03:55:39')  as test_tz UNION ALL
           SELECT  UNIX_TIMESTAMP('2018-02-08 03:55:37')  as test_tz

    ;;


  }


  dimension_group: test_tz {
    type: time
    timeframes: [date, time,raw,time_of_day]
    datatype: epoch
    sql: ${TABLE}.test_tz;;

    }


#     dimension: time_stamp {
#       type: date_time
#       sql: DATE_FORMAT(${test_tz_time}, "%Y%m%d%T") ;;
#     }


 }


# UTC is 8 hours from us and CST  is 2 hours from us
# CST is 6 hours earlier than UTC
# AT TIME ZONE 'America/Chicago' corrects the timestamp from UTC to CST
