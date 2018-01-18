<?php

use yii\helpers\Html;
use yii\grid\GridView;
use backend\models\User;
use kartik\date\DatePicker;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\UserSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('admin', 'Users');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(Yii::t('admin', 'Create User'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
//            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute' => 'id',
                'headerOptions' => ['width' => '80'],
            ],
            'username',
            'email:email',
            [
                'attribute' => 'status',
                'value' =>
                    function ($model) {
                        return User::dropDown('status', $model->status);
                    },
                'filter' => User::dropDown('status'),
                'headerOptions' => ['width' => '80'],
            ],
            [
                'attribute' => 'created_at',
                'format' => ['date', 'php:Y-m-d H:i:s'],
                'headerOptions' => ['width' => '240'],
                'filter' => DatePicker::widget([
                    'name' => 'UserSearch[created_at]',
                    'options' => ['placeholder' => ''],
                    'value' => '',
                    'convertFormat' => true,
                    'pluginOptions' => [
                        'format' => 'yyyy-MM-dd',
                        'todayHighlight' => true
                    ]
                ]),
            ],
            [
                'attribute' => 'updated_at',
                'format'=>['date', 'php:Y-m-d H:i:s'],
                'headerOptions' => ['width' => '170'],
            ],
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
