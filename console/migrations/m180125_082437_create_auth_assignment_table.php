<?php

use yii\db\Migration;

/**
 * Handles the creation of table `auth_assignment`.
 */
class m180125_082437_create_auth_assignment_table extends Migration
{
    const TABLE_NAME = '{{%auth_assignment}}';

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
            'item_name' => $this->string(64)->notNull(),
            'user_id' => $this->string(64)->notNull(),
            'created_at' => $this->integer(),
        ], $tableOptions);

        $this->addPrimaryKey('pk_auth_assignment', self::TABLE_NAME, ['item_name', 'user_id']);

        $this->addForeignKey('fk_auth_assignment_1',self::TABLE_NAME, 'item_name', '{{%auth_item}}', 'name', 'CASCADE', 'CASCADE' );

        $this->createIndex('index_user_id', self::TABLE_NAME, 'user_id');
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropTable(self::TABLE_NAME);
    }
}
