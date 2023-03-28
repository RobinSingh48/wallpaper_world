import 'package:http/http.dart'as http;

class ApiOperation{
 getWallpapaers()async{
   await http.get(Uri.parse("https://api.pexels.com/v1/curated"),
   headers: {"Authorization": "wSoEajbq9b96o0h5KDNNz06pv5UJvu6MfnpvufVZ9SMUybQol1JtmYNg"}
   );
 }
}