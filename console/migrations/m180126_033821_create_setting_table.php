<?php

use yii\db\Migration;

/**
 * Handles the creation of table `setting`.
 */
class m180126_033821_create_setting_table extends Migration
{
    const TABLE_NAME = '{{%setting}}';
    /**
     * @inheritdoc
     */
    public function up()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }
        $this->createTable(self::TABLE_NAME, [
            'key' => $this->string(255)->notNull()->unique(),
            'value' => $this->text()->notNull(),
        ], $tableOptions);
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropTable(self::TABLE_NAME);
    }
}
