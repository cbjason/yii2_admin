<?php

use yii\db\Migration;

/**
 * Class m180118_090335_update_user_table
 */
class m180118_090335_update_user_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function safeUp()
    {

    }

    /**
     * @inheritdoc
     */
    public function safeDown()
    {
        echo "m180118_090335_update_user_table cannot be reverted.\n";

        return false;
    }

    // Use up()/down() to run migration code without a transaction.
    public function up()
    {
        $this->dropColumn('{{%user}}', 'password_reset_token');
        $this->alterColumn('{{%user}}', 'status', 'SMALLINT(6) NOT NULL DEFAULT 1 COMMENT "状态，1：显示 2：隐藏"');
    }

    public function down()
    {
        echo "m180118_090335_update_user_table cannot be reverted.\n";

        return false;
    }
}
