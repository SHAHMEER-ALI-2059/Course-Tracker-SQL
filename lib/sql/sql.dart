import 'package:connect_to_sql_server_directly/connect_to_sql_server_directly.dart';
// import 'package:flutter/material.dart';

class SQL {
  static var database = "coursetracker";
  // static var ip = "192.168.117.235";
  static var ip = "192.168.100.7";
  // static var ip = "127.0.0.1";
  // static var ip = "192.168.188.235";
  // static var ip = "192.168.137.205";
  static final connectToSqlServerDirectlyPlugin = ConnectToSqlServerDirectly();
 static Future<void> connection()  {
   return  connectToSqlServerDirectlyPlugin.initializeConnection(
      ip,
      database,
      'ali',   
      '12345',
      instance: 'node',
    ); 
  }
   

  static Future<void> post(String query)  {
    print("query: $query");
    // await connection();
    return connectToSqlServerDirectlyPlugin.getStatusOfQueryResult(query);
  }

  static Future<dynamic> get(String query)  async {
    print("query: $query");
    // await connection();
    return await connectToSqlServerDirectlyPlugin.getRowsOfQueryResult(query);
  }

  static Future<dynamic> Update(String query)  {
    print("query: $query");
    // await connection();
   return  connectToSqlServerDirectlyPlugin.getStatusOfQueryResult(query);
  }

}
