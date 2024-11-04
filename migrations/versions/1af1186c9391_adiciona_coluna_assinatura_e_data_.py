"""Adiciona coluna assinatura e data_assinatura à tabela monitoria

Revision ID: 1af1186c9391
Revises: eeff95143ceb
Create Date: 2024-11-01 11:03:55.708923

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '1af1186c9391'
down_revision = 'eeff95143ceb'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('monitoria', schema=None) as batch_op:
        batch_op.add_column(sa.Column('assinatura', sa.String(length=100), nullable=True))
        batch_op.add_column(sa.Column('data_assinatura', sa.DateTime(), nullable=True))

    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('monitoria', schema=None) as batch_op:
        batch_op.drop_column('data_assinatura')
        batch_op.drop_column('assinatura')

    # ### end Alembic commands ###
