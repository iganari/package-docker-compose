<?php

print <<< END_DOC
<HTML>
<HEAD><title>アクセス情報の表示</title>
</HEAD><BODY>
END_DOC;

print "現在の日時：".date("Y/m/d H:i:s", date("U"))."<br>\n";
print "表示ページ：".$_SERVER["REQUEST_URI"]."<br>\n";
print "リンク元：".$_SERVER["HTTP_REFERER"]."<br>\n";
print "エージェント：".$_SERVER["HTTP_USER_AGENT"]."<br>\n";
print "IPアドレス：".$_SERVER["REMOTE_ADDR"]."<br>\n";

print <<< END_DOC
</BODY>
</HTML>
END_DOC;
?>

<?php
phpinfo();
