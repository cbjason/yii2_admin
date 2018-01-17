<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\User */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Users', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('admin', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('admin', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'username',
            'email:email',
            [
                'attribute' => 'status',
                'value' =>
                    function ($model) {
                        if ($model->status == 10) {
                            return '正常';
                        } else {
                            return '异常';
                        }
                    },
                'headerOptions' => ['width' => '100'],
            ],
            [
                'attribute' => 'created_at',
                'value' =>
                    function ($model) {
                        return date('Y-m-d H:i:s', $model->updated_at);
                    },
                'headerOptions' => ['width' => '170'],
            ],
            [
                'attribute' => 'updated_at',
                'value' =>
                    function ($model) {
                        return date('Y-m-d H:i:s', $model->updated_at);
                    },
                'headerOptions' => ['width' => '170'],
            ],
        ],
    ]) ?>

</div>
