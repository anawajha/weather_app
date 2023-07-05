class AppResponse {
    AppResponse({
        this.status = false,
        this.message_,
        this.data
    });

    bool status;
    String? message_;
    dynamic data;
    
    String get message => message_ ?? 'Something went wrong';
}