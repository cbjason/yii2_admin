<?php

use yii\db\Migration;

/**
 * Handles the creation of table `auth_item_child`.
 */
class m180125_082032_create_auth_item_child_table extends Migration
{
    const TABLE_NAME = '{{%auth_item_child}}';

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
            'parent' => $this->string(64)->notNull(),
            'child' => $this->string(64)->notNull(),
        ], $tableOptions);

        $this->addPrimaryKey('pk_auth_item_child', self::TABLE_NAME, ['parent', 'child']);

        $this->addForeignKey('fk_auth_item_child_1',self::TABLE_NAME, 'parent', '{{%auth_item}}', 'name', 'CASCADE', 'CASCADE' );
        $this->addForeignKey('fk_auth_item_child_2',self::TABLE_NAME, 'child', '{{%auth_item}}', 'name', 'CASCADE', 'CASCADE' );
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropTable(self::TABLE_NAME);
    }
}
