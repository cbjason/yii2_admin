<?php

use yii\db\Migration;

/**
 * Handles the creation of table `menu`.
 */
class m180125_071130_create_menu_table extends Migration
{
    const TABLE_NAME = '{{%menu}}';

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
            'id' => $this->primaryKey(),
            'name' => $this->string(128)->notNull(),
            'parent' => $this->integer(),
            'route' => $this->string(256),
            'order' => $this->integer(),
            'data' => $this->text(),
        ], $tableOptions);

        /* 索引设置 */
        $this->createIndex('index_parent',self::TABLE_NAME,'parent',0);

        /* 外键约束设置 */
        $this->addForeignKey('fk_menu',self::TABLE_NAME, 'parent', self::TABLE_NAME, 'id', 'SET NULL', 'CASCADE' );
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropTable(self::TABLE_NAME);
    }
}
