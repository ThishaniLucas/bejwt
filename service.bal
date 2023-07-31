import ballerina/io;
import ballerina/http;
service / on new http:Listener(9090) {
    resource function get path(http:Request req) {
        string[] headerNames = req.getHeaderNames();
        headerNames.forEach(function (string headerName) {
            io:println("Header Name: " + headerName);
            });
    }
}
