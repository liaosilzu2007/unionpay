<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
测试卡号：与银联测试环境联调使用的卡号 <a href="https://open.unionpay.com/ajweb/help/faq/list?id=4&level=0&from=0" target="_blank">测试卡号</a><br>
订购产品仅允许使用信用卡支付。<br>
<br>
交易流程：实名认证交易->订购预授权交易（包括处理后台通知,需要还可以对订购预授权做交易状态查询交易)<br><br>
前台实名认证：无后台通知，有前台返回商户按钮（前台通知）<br>
                                    如果上送accNo回显在认证页面的话，customerInfo验证要素根据在银联后台配置上送，具体参见代码示例注释。<br><br>
后台实名认证：同步返回结果确定交易是否成功<br>
            customerInfo验证要素根据在银联后台配置上送，具体参见代码示例注释。<br><br>
预授权：后台交易，以后台通知或者交易状态查询确定是否成功<br>
       customerInfo验证要素根据在银联后台配置上送，具体参见代码示例注释。<br><br>
交易状态查询说明：<br>
origrespcode=00成功，03、04、05重新查询，其他为失败。<br><br>
对账文件下载：<br>
对账文件什么时候能下载？<br>
测试环境一般下午5点出，文件内包含的交易的时间范围是13:30-13:30。<br>
生产环境一般早上9点出，文件内包含的交易的时间范围是23:00-23:00。<br><br>
对账文件获取后会落地成一个zip文件，zip文件中的ZM，ZME文件各个字段的拆分解析可以参考DemoBase.java中的parseZMFile parseZMEFile 方法。<br>
