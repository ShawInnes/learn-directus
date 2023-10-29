export async function up(knex) {
    await knex('directus_roles').insert({
        id: '0fcdec2b-3efb-44c1-8f91-d743cc70d3d7',
        name: 'Administrator',
        description: 'Custom Admin role',
        icon: 'verified',
        app_access: true,
        admin_access: true
    });
}

export async function down(knex) {

}