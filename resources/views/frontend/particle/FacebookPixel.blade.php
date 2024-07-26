
<!-- Facebook Pixel Code -->

<script>

!function(f,b,e,v,n,t,s)


{if(f.fbq)return;n=f.fbq=function(){n.callMethod?

n.callMethod.apply(n,arguments):n.queue.push(arguments)};

if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';

n.queue=[];t=b.createElement(e);t.async=!0;

t.src=v;s=b.getElementsByTagName(e)[0];

s.parentNode.insertBefore(t,s)}(window,document,'script',

'https://connect.facebook.net/en_US/fbevents.js');

fbq('init', '6459193970823337');

fbq('track', 'PageView');

</script>

<noscript>

<img height="1" width="1"

src="https://www.facebook.com/tr?id=6459193970823337&ev=PageView

&noscript=1"/>

</noscript>

<!-- End Facebook Pixel Code -->
<!-- start tiktok Pixel Code -->
// BASE CODE TEMPLATE:

<script>

                                                            curl --location --request POST 'https://business-api.tiktok.com/open_api/v1.3/pixel/track/'   --header 'Access-Token: ACCESS_TOKEN   --header 'Content-Type: application/json'   --data-raw '{

  "properties": {

    "value": "<content_value>", // number. Value of the order or items sold. Example: 100.

    "currency": "<content_currency>", // string. The 4217 currency code. Example: "USD".

    "contents": [

      {

        "content_id": "<content_identifier>", // string. ID of the product. Example: "1077218".

        "content_type": "<content_type>", // string. Either product or product_group.

        "content_name": "<content_name>", // string. The name of the page or product. Example: "shirt".

        "price": "<content_price>", // number. The price of a single item. Example: 25.

        "quantity": "<content_quantity>" // number. The number of items. Example: 4.

      }

    ],

    "description": "<content_description>" // string. The description of the item or page. Example: "light weight cotton". // string. Non-hashed public IP address of the browser.

  },

  "event_id": "<event_id>", // string or hashed ID that can identify a unique event. Example: "1616318632825_357".

  "context": {

    "page": {

      "url": "<web_page_url>" // string. The page URL where the event took place. Example: "http://demo.mywebsite.com/purchase" // string. Cookie ID. If you also use Pixel SDK and enabled cookie, Pixel SDK automatically saves a unique identifier in the _ttp cookie. Example: "2F7h37YkS1j57AYSKTI7IHhJPYH"

    },

    "user": {

      "email": "<hashed_email_address>", // string. The email of the customer if available. It must be hashed with SHA-256 on the client side.

      "phone_number": "<hashed_phone_number>", // string. The phone number of the customer if available. It must be hashed with SHA-256 on the client side.

      "external_id": "<hashed_extenal_id>", // string. A unique ID from the advertiser such as user or external cookie IDs. It must be hashed with SHA256 on the client side.

      "ttp": "<_ttp>" // string. Cookie ID. If you also use Pixel SDK and enabled cookie, Pixel SDK automatically saves a unique identifier in the _ttp cookie. Example: "2F7h37YkS1j57AYSKTI7IHhJPYH"

    },

    "ip": "<ip_address>", // string. Non-hashed public IP address of the browser.

    "user_agent": "<user_agent>", // string. Non-hashed user agent from the user’s device. Example: "Chrome/91.0.4472.124".

    "ad": {

      "callback": "<tiktok_click_id>" // string. TikTok Click ID (ttclid) or a tracking parameter added to a landing page URL whenever a user clicks on an ad on TikTok. It starts with "E.C.P.".

    }

  },

  "event": "CompleteRegistration"

}'

curl --location --request POST 'https://business-api.tiktok.com/open_api/v1.3/pixel/track/'   --header 'Access-Token: ACCESS_TOKEN   --header 'Content-Type: application/json'   --data-raw '{

  "properties": {

    "value": "<content_value>", // number. Value of the order or items sold. Example: 100.

    "currency": "<content_currency>", // string. The 4217 currency code. Example: "USD".

    "contents": [

      {

        "content_id": "<content_identifier>", // string. ID of the product. Example: "1077218".

        "content_type": "<content_type>", // string. Either product or product_group.

        "content_name": "<content_name>", // string. The name of the page or product. Example: "shirt".

        "quantity": "<content_quantity>" // number. The number of items. Example: 4.

      }

    ],

    "description": "<content_description>" // string. The description of the item or page. Example: "light weight cotton". // string. Non-hashed public IP address of the browser.

  },

  "event_id": "<event_id>", // string or hashed ID that can identify a unique event. Example: "1616318632825_357".

  "context": {

    "page": {

      "url": "<web_page_url>" // string. The page URL where the event took place. Example: "http://demo.mywebsite.com/purchase" // string. Cookie ID. If you also use Pixel SDK and enabled cookie, Pixel SDK automatically saves a unique identifier in the _ttp cookie. Example: "2F7h37YkS1j57AYSKTI7IHhJPYH"

    },

    "user": {

      "email": "<hashed_email_address>", // string. The email of the customer if available. It must be hashed with SHA-256 on the client side.

      "phone_number": "<hashed_phone_number>", // string. The phone number of the customer if available. It must be hashed with SHA-256 on the client side.

      "external_id": "<hashed_extenal_id>", // string. A unique ID from the advertiser such as user or external cookie IDs. It must be hashed with SHA256 on the client side.

      "ttp": "<_ttp>" // string. Cookie ID. If you also use Pixel SDK and enabled cookie, Pixel SDK automatically saves a unique identifier in the _ttp cookie. Example: "2F7h37YkS1j57AYSKTI7IHhJPYH"

    },

    "ip": "<ip_address>", // string. Non-hashed public IP address of the browser.

    "user_agent": "<user_agent>", // string. Non-hashed user agent from the user’s device. Example: "Chrome/91.0.4472.124".

    "ad": {

      "callback": "<tiktok_click_id>" // string. TikTok Click ID (ttclid) or a tracking parameter added to a landing page URL whenever a user clicks on an ad on TikTok. It starts with "E.C.P.".

    }

  },

  "event": "ViewContent"

}'

curl --location --request POST 'https://business-api.tiktok.com/open_api/v1.3/pixel/track/'   --header 'Access-Token: ACCESS_TOKEN   --header 'Content-Type: application/json'   --data-raw '{

  "properties": {

    "value": "<content_value>", // number. Value of the order or items sold. Example: 100.

    "currency": "<content_currency>", // string. The 4217 currency code. Example: "USD".

    "contents": [

      {

        "content_id": "<content_identifier>", // string. ID of the product. Example: "1077218".

        "content_type": "<content_type>", // string. Either product or product_group.

        "content_name": "<content_name>", // string. The name of the page or product. Example: "shirt".

        "quantity": "<content_quantity>" // number. The number of items. Example: 4.

      }

    ],

    "description": "<content_description>" // string. The description of the item or page. Example: "light weight cotton". // string. Non-hashed public IP address of the browser.

  },

  "event_id": "<event_id>", // string or hashed ID that can identify a unique event. Example: "1616318632825_357".

  "context": {

    "page": {

      "url": "<web_page_url>" // string. The page URL where the event took place. Example: "http://demo.mywebsite.com/purchase" // string. Cookie ID. If you also use Pixel SDK and enabled cookie, Pixel SDK automatically saves a unique identifier in the _ttp cookie. Example: "2F7h37YkS1j57AYSKTI7IHhJPYH"

    },

    "user": {

      "email": "<hashed_email_address>", // string. The email of the customer if available. It must be hashed with SHA-256 on the client side.

      "phone_number": "<hashed_phone_number>", // string. The phone number of the customer if available. It must be hashed with SHA-256 on the client side.

      "external_id": "<hashed_extenal_id>", // string. A unique ID from the advertiser such as user or external cookie IDs. It must be hashed with SHA256 on the client side.

      "ttp": "<_ttp>" // string. Cookie ID. If you also use Pixel SDK and enabled cookie, Pixel SDK automatically saves a unique identifier in the _ttp cookie. Example: "2F7h37YkS1j57AYSKTI7IHhJPYH"

    },

    "ip": "<ip_address>", // string. Non-hashed public IP address of the browser.

    "user_agent": "<user_agent>", // string. Non-hashed user agent from the user’s device. Example: "Chrome/91.0.4472.124".

    "ad": {

      "callback": "<tiktok_click_id>" // string. TikTok Click ID (ttclid) or a tracking parameter added to a landing page URL whenever a user clicks on an ad on TikTok. It starts with "E.C.P.".

    }

  },

  "event": "ClickButton"

}'
</script>

<!-- End tiktok Pixel Code -->