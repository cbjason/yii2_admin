<?php

use yii\db\Migration;

/**
 * Handles the creation of table `auth_item`.
 */
class m180125_080426_create_auth_item_table extends Migration
{
    const TABLE_NAME = '{{%auth_item}}';

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
            'name' => $this->string(64)->notNull(),
            'type' => $this->smallInteger()->notNull(),
            'description' => $this->text(),
            'rule_name' => $this->string(64),
            'data' => $this->text(),
            'created_at' => $this->integer(),
            'updated_at' => $this->integer(),
        ], $tableOptions);

        /* 设置主键 */
        $this->addPrimaryKey('pk_auth_item', self::TABLE_NAME, 'name');

        $this->addForeignKey('fk_auth_item_1',self::TABLE_NAME, 'rule_name', '{{%auth_rule}}', 'name', 'SET NULL', 'CASCADE' );

        $this->createIndex('index_type', self::TABLE_NAME, 'type');
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropTable(self::TABLE_NAME);
    }
}
