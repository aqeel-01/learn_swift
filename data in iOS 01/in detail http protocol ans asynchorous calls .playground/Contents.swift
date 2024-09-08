import Cocoa


//create URL from components
var components = URLComponents()

components.scheme = "https"
components.host = "google.com"
components.path = "/images"
let url = components.url  //(it will combine all  like https://google/com/images


//url Session download task

func downloadTask (
    with request: URLRequest,
completionHandler:@escaping @Sendable (URL? , URLResponse? , Error?) ->Void
) -> URLSessionDownloadTask

/*
let url = URL(String:"https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/littleLemonSimpleMenu.json ")!
let request = URLRequest(url: url)
let downloadTask = URLSession.shared.downloadTask(with: request) { url , response , error  in

    print(url)
}

downloadTask.resume()
*/

//Canceling the task in progress

let url = URL(string:"https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/littleLemonSimpleMenu.json ")!
let request = URLRequest(url: url)
let downloadTask = URLSession.shared.downloadTask(with: request) {
    url , response , error Int
    
    print(url)
}

downloadTask.resume()
downloadTask.cancel()
