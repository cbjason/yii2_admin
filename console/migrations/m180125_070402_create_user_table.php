<?php

use yii\db\Migration;

/**
 * Handles the creation of table `user`.
 */
class m180125_070402_create_user_table extends Migration
{
    const TABLE_NAME = '{{%user}}';

    /**
     * @inheritdoc
     */
    public function up()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            // http://stackoverflow.com/questions/766809/whats-the-difference-between-utf8-general-ci-and-utf8-unicode-ci
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable(self::TABLE_NAME, [
            'id' => $this->primaryKey(),
            'username' => $this->string()->notNull()->unique(),
            'auth_key' => $this->string(32)->notNull(),
            'password_hash' => $this->string()->notNull(),
            'password_reset_token' => $this->string(256),
            'email' => $this->string()->notNull()->unique(),

            'status' => $this->smallInteger()->notNull()->defaultValue(1),
            'created_at' => $this->integer()->notNull(),
            'updated_at' => $this->integer()->notNull(),
        ], $tableOptions);

        $this->insert(self::TABLE_NAME, [
            'username' => 'admin',
            'auth_key' => 'rH7vUm75ov_5K0MZcIKfiPXJ2M0YlJvm',
            'password_hash' => '$2y$13$o9qCbbh0q95HiAoL0NrFpe2ZVO.Bp6SLd1xFVLMRNaTInVsDzGEjW',
            'password_reset_token' => NULL,
            'email' => 'admin@test.com',
            'status' => 1,
            'created_at' => '1515913743',
            'updated_at' => '1515913743', 'last_login_at' => NULL, 'this_login_at' => NULL, 'last_login_ip4' => NULL, 'this_login_ip4' => NULL, 'email' => '00000000@00.00', 'role' => '1', 'job' => NULL, 'see_unit' => '1', 'own_unit' => NULL, 'profile' => NULL, 'status' => '0', 'is_backend' => '0', 'avatar' => NULL
        ]);
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropTable(self::TABLE_NAME);
    }
}
