<?php

/* @var $this yii\web\View */
/* @var $server yii\web\View */

$this->title = 'Yii2Demo';
?>
<style type="text/css">
    td {
        width: 350px;
        padding: 5px;
    }
    tr {
        display: block;
        margin: 2px 0;
    }
</style>

<div class="site-index">
    <div class="body-content">
        <table class="content_list" style="width: 50%;">
            <thead>
            <tr>
                <td colspan="2" class="tbTitle">系统信息</td>
            </tr>
            </thead>
            <tr>
                <td>操作系统软件</td>
                <td><?php echo $server['serverOs'] ?> - <?php echo $server['serverSoft'] ?></td>
            </tr>
            <tr>
                <td>PHP环境</td>
                <td>PHP版本:<?php echo $server['phpVersion'] ?></td>
            </tr>
            <tr>
                <td>上传许可</td>
                <td><?php echo $server['fileUpload'] ?></td>
            </tr>
        </table>
    </div>
</div>
