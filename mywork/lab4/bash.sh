#!/bin/bash


curl https://t3.ftcdn.net/jpg/03/83/46/48/360_F_383464809_VAyaM0bON9NZT1UCPXghp8GhHx56QKqm.jpg > tiger_pic.jpg
aws s3 cp tiger_pic.jpg s3://ds2002-rck7ye/

aws s3 presign --expires-in 604800 s3://ds2002-rck7ye/tiger_pic.jpg

https://ds2002-rck7ye.s3.us-east-1.amazonaws.com/tiger_pic.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIA2UC3FCJBTC5J6J7G%2F20240315%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240315T212149Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Security-Token=FwoGZXIvYXdzEJ3%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDAZM0%2FBxLVRPOp3gnyLEAb9CXLExd5Ll6tQTlEnvlknssKO7uRugN%2B9uXIMA7MNYUUBwPBNlPaNrAJ8hBVevUzNALVTCtBCca1orYSlBZwNzNyiWcV6chX53JQ1adRylt4r71LnCwM0ZOKv2OP8bSE5mV94xPgWXcQtuNO5uimw1Bgj5dhba7f%2BRg4662K2HYg03SzHbDXrTr8CkClBjRRuEw7k8N5Ro7UKQHrZo2QSnIvZzc%2BIZNWa1OFjpOtKtPFDsTdfcKGs0SKH3F%2FabmFH7uycorLzSrwYyLRIfW0IMZzcOrm7HnP%2FxfTNo0uNVlSOFAwLGJp3HcHAHzRvDRR2p%2BfxmDVqcqA%3D%3D&X-Amz-Signature=08ab57fdbcda11acc3059eaf5c19d225bceac61ac3aca5dfae75f5f10620b7b2


