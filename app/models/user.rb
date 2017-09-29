class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :lists #un usuario tiene muchas listas
  has_many :tasks, through: :lists #un usuario tiene muchas tareas a traves de las listas
end
