package com.etc.config;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016100100640866";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCIF+joJAh70Qcj3RU4gP+tX6K2f/mtv0q8fP+PtrZVXDhW+j6JDtT2bUUA3oloQAD1VlOg8IxRTGexbClGJLLTRLg3jnUEzWbBy5MwcsG9gkZcBFFWhdfPzl5bPU1JP3nJxrffTDbjiDpAnts0sEygeYWlJK0hnHygx8WFlzmOzzblYAzfC824ywu+x9Kq9DPThP4e2EzAup865LglsgHwZnb9nUGl7CbQWyFfNY1UL2I0PMY1Rk8UQNuYNQOYcQo4p23FNlTpL51J0qQtuNmT+RH1vLHbTDCe5A6rLp9RpatIV/85ITUcbnDf0UexxhIhThdKU5W1mESYmpJDaW1FAgMBAAECggEAYTcrMcCjqsbLYewIv58uhMt/MPzD/0BZg8GK0T9Eij9hI4iI6WEF8a5mj1NoNmcaCCcNgDa1FVIN9Gh+J1QJxe8d5NnHb5HGaIMidoZTLSuFVS/kZnkfi5swPd7ReZR1TBS+viz0PJ7Qdd7EWaPiaPPF6w0C+7KMOFHcICzBeegxzamMxnuY60SbcaehEW7ymkZ8/Ksk4i+3xMRjYke8YfAi9gvtey1oDZqMSS/gVz6TsKyhkibLftcPSoW376VNBuYXHc74gOxCunp8mG7cOnjaZNqwwoPCwltnaoxLpc8bShRQDrouC11SXFd774g88S9FAS9QY6eEhkrdLZNYYQKBgQDM0b7SE67sYVdX/S3FrHCDSzBJ1m7xDzu3KuywmNTR1h7l+aq6rci+StU6Hzc6HUhGOBzjNAM6c9TmcoaaemJyFMVSx6MvmgZNk9d3aTocCvv0auPFtmCcTrhvUqVTLU2OnGcKpVMtgKBeotxiwrRsScTanvnHes45CLUh0ocFOQKBgQCqGcedbpcro/1FRcr3bT+BNr4rp9xPeav0cgxLV83bRjFhyjacTPmCN5tiL10F03H3kHvwdrQTHSmLQrwHnA0zoCq2wEY4kyJQVe8mTIilNzLMez2CUeZfOz4AtE1PCiQq8s1UFOItIoKHGSU2AHZ3AkJOY8TB79+jfWUOfWHUbQKBgD0RPGe+XqUz0Kr3XbJWW6WJwXgCa0mMVS2jqrZsmueFg+jlq7XFItk5zqFptTmqiWYGTPahB2ViK9QZyXA9lSSWdM7dnxYOQlrW/aMoyJ6b18tkI01LtzpjbjIi3hASrdEbaM2PxWEHvMj6neMEUm8G/55/T9HeF6aBph/TeVZhAoGATtHjTXARXIeAtLjCdCSLaLSVKmV+ENWweHTgfYkSOqkr+MRaydJhS5W4yqZn1GtGRBEPXT2j87dvqLgjqOMGuwVcxZIS9+Q14kPvrS+JogUR5O62cczBkx9Ae9MQf6+TUtNvkaabp452LWPZekx8mGjTkL9qTPN6DaftS+mNi4ECgYAPvJr83Ywez+LjVw0IjRTDI+lbszB4yG4T63Dx3/n99dVu9rQ1CEgYzs6tBHfUGo3QVQXX5hSoKS3H4yJ5hKA3looa7WyvYIWSMe3hnfVr7XIqrjAVyhE4GIR5GmXiO+Qy8IBtjwdJCDhaBLAsx6Ns9jq2bNxpwDBuzCN21W2j7A==";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key ="MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjhW9GjRIW21mKD7FE229NVStq2MU+Ic7C/5yUjRvajjZAMJVMnNGQFky920LPHJz7vt/zdCQNql2oaJA3bCLDxdzjxXCPb3d3gMJBmmq3HWtB2Y6BhcKrPiv8euBw3jvpofgkCkj2kSSpxuftz6c+U2BMpMCRCxEJQ9rPyPjOQdLeiwoQ6sblIznsakMCtGKsEAOMtjXSxYO1FSTpI9kI7M8bqES/qGDAryCEMFNrHbs2Nz6BUFVMjH48GLnZGY+obkSnLRdhlJ7bzVDJrVp6gvLtuN7Q2AaPgAPKc5sKl0pE8jZ8q1mLMu80nCnTeayJdRmyQ43exWw5hEvY9UtXQIDAQAB";
    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://192.168.2.146/notify_url.jsp";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://localhost:8888/pay/return";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    //public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
//    public static void logResult(String sWord) {
//        FileWriter writer = null;
//        try {
//            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
//            writer.write(sWord);
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            if (writer != null) {
//                try {
//                    writer.close();
//                } catch (IOException e) {
//                    e.printStackTrace();
//                }
//            }
//        }
//    }
}


