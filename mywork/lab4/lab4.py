import boto3
import requests


url = ‘https://cdn.britannica.com/30/150930-120-D3D93F1E/lion-Namibia.jpg’

filename=’lionpic.jpg’

urllib.request.urlretrieve(url, filename)



s3 = boto3.client('s3', region_name='us-east-1')

bucket = 'ds2002-rck7ye'
local_file = 'lionpic.jpg'

resp = s3.put_object(
    Body = local_file,
    Bucket = bucket,
    Key = local_file,
ACL=‘public-read’
)

Response = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket, 'Key': local_file},
    ExpiresIn=608400
    )

print(Response)

https://ds2002-rck7ye.s3.amazonaws.com/lionpic.jpg?AWSAccessKeyId=ASIA2UC3FCJB3BOSUDHM&Signature=kFRM2t4w0t83sNGNyHHTsFi2QQI%3D&x-amz-security-token=FwoGZXIvYXdzEKH%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDGPPl9mgzMhp4Bpo%2FiLEAb2eIsVIFH1Yb0QLhZSEHeVkB4bel7ViI1s8Bq8CqN9TRjkSIvSVVPWA0O%2FGdgNeC0VZz%2F6%2B0qpmO8kxTSDsyI6L%2Bm%2B4rFfANarO3nFL9gbfslU9iBOwDtOUc1dSOyiog%2FfQOvr42SWV3As47JSBJ90Tp85BFnRowrh%2FzDjWHmauv6M7Zx0wL%2FC7egeXoemPOhaNsTC5YZtqacBlEFwa4Zn7P%2BpnmdAq8aAKpV0SbtzTPELW6QhhscM2ZtJgKBf7oaFf5wIoobbTrwYyLbrh5uIpWnYLyo%2F2YQsNCwg5IqRoytlrUd%2BbjgYnpVPT265tH%2F8MC6McncpoLA%3D%3D&Expires=1711155724
