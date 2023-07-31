import ballerina/io;
import ballerina/http;
service / on new http:Listener(9090) {
    resource function get path(http:Request req) {
        string[] headerNames = req.getHeaderNames();
        headerNames.forEach(function (string headerName) {
            string|http:HeaderNotFoundError headerValue = req.getHeader(headerName);
            io:println("Header Name: " + headerName + " Value: " + (headerValue is string ? headerValue : ""));
            });
    }
}
