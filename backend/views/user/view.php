<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use backend\models\User;

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
                'confirm' => Yii::t('admin', 'Sure Delete?'),
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
                        return User::dropDown('status', $model->status);
                    },
                'headerOptions' => ['width' => '100'],
            ],
            [
                'attribute' => 'created_at',
                'format'=>['date', 'php:Y-m-d H:i:s'],
                'headerOptions' => ['width' => '170'],
            ],
            [
                'attribute' => 'updated_at',
                'format'=>['date', 'php:Y-m-d H:i:s'],
                'headerOptions' => ['width' => '170'],
            ],
        ],
    ]) ?>

</div>
