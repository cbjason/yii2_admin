<?php

use yii\helpers\Html;
use yii\grid\GridView;

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
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
