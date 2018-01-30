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

        $this->insert(self::TABLE_NAME, ['name' => '系统设置', 'parent' => null, 'route' => null, 'order' => 100, 'data' => '{"icon":"wrench"}']);
        $this->insert(self::TABLE_NAME, ['name' => '菜单列表', 'parent' => 1, 'route' => '/admin/menu/index', 'order' => 1, 'data' => '{"icon":"bars"}']);
        $this->insert(self::TABLE_NAME, ['name' => '路由列表', 'parent' => 1, 'route' => '/admin/route/index', 'order' => 2, 'data' => '{"icon":"internet-explorer"}']);
        $this->insert(self::TABLE_NAME, ['name' => '权限列表', 'parent' => 1, 'route' => '/admin/permission/index', 'order' => 3, 'data' => '{"icon":"lock"}']);
        $this->insert(self::TABLE_NAME, ['name' => '分配权限', 'parent' => 1, 'route' => '/admin/assignment/index', 'order' => 4, 'data' => '{"icon":"unlock"}']);
        $this->insert(self::TABLE_NAME, ['name' => '角色列表', 'parent' => 1, 'route' => '/admin/role/index', 'order' => 5, 'data' => '{"icon":"users"}']);
        $this->insert(self::TABLE_NAME, ['name' => '规则列表', 'parent' => 1, 'route' => '/admin/rule/index', 'order' => 6, 'data' => '{"icon":"list"}']);
        $this->insert(self::TABLE_NAME, ['name' => '用户管理', 'parent' => null, 'route' => '/user/index', 'order' => 1, 'data' => '{"icon":"user"}']);
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropTable(self::TABLE_NAME);
    }
}
