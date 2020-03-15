# frozen_string_literal: true

class LoginController < ApplicationController
  def new
    user = User.find_by(username: params[:username])
    if user.authenticate(params[:password])
      payload = { "user_id": user.id }
      token = encode(payload)
      render json: {
        userinfo: user.to_json(user_show(user)),
        authenticated: "true",
        token: token
      }
    else
      render json: { message: "Username or Password are incorrect" }
    end
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      render json: { message: "User created", userinfo: @user, authenticated: "true" }
    else
      render json: { message: "There was a problem", authenticated: "false" }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :role)
  end

  def user_show(user)
    if user.role == 'farmer'
      {
        except: %i[created_at updated_at password_digest],
        include: {
          avatar: { except: %i[created_at updated_at] },
          categories: { except: %i[created_at updated_at] },
          followers: { except: %i[password_digest created_at updated_at] },
          posts: {
            except: %i[created_at updated_at],
            include: { category: { except: %i[created_at updated_at] } }
          },
          biography: { except: %i[created_at updated_at] }
        }
      }
    else
      {
        except: %i[created_at updated_at password_digest],
        include: {
          avatar: { except: %i[created_at updated_at] },
          followees: {
            except: %i[password_digest created_at updated_at],
            include: {
              avatar: { except: %i[created_at updated_at] },
              posts: {
                except: %i[created_at updated_at],
                include: {
                  category: { except: %i[created_at updated_at] }
                }
              },
              biography: { except: %i[created_at updated_at] },
              categories: { except: %i[created_at updated_at] },
              followers: { except: %i[created_at updated_at password_digest] }
            }
          }
        }
      }
    end
  end
end
